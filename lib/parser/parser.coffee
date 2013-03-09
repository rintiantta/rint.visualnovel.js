# CoffeeScript
rint_to_eval_string = (object) ->
    if object.parameter
        eval_string = "#{object.name}(#{JSON.stringify(object.parameter)})"
    else
        eval_string = "#{object.name}()"
    return eval_string
rint_visual_novel_parser = (script) ->
    rint_data_change = (data) ->
        if data.contain "\""
            return data.remove "\""
        else if (data is "true") or (data is "false")
            return Boolean data
        else
            parsed = parseFloat data
            if not isNaN parsed
                return parsed
            else 
                throw "Unknown DataType: " + data
    script = script.trimSplit "#"
    script = script.filter (cluster) ->
        return cluster isnt ""
    script = script.map (cluster) ->
        output = { parameter: {} }
        lines = cluster.trimSplit "\n"
        lines.forEach (line, index) ->
            if index is 0
                if lines.length is 1
                    if line.contain(":")
                        splitted = line.trimSplit ":"
                        output.name = splitted[0]
                        output.parameter = rint_data_change splitted[1]
                    else
                        output.name = line.trim ""
                        delete output.parameter
                else
                    output.name = line.replace ":", ""
            else
                if line.contain ":"
                    splitted = line.trimSplit ":"
                    output.parameter[splitted[0]] = rint_data_change splitted[1]
                else
                    output.parameter[line.trim ""] = true
        return output

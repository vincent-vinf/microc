open CPar
open Interp

let fromFile = Parse.fromFile
let run = Interp.run
let argv = System.Environment.GetCommandLineArgs()

let _ =
    printf "Micro-C interpreter v0.0.1 of 2022-6-4\n"

let _ =
    let args = Array.filter ((<>) "-g") argv

    if args.Length > 1 then
        let source = args.[1]

        let inputargs =
            Array.splitAt 2 args
            |> snd
            |> (Array.map int)
            |> Array.toList

        printf "interpreting %s ...inputargs:%A\n" source inputargs

        // ex 是 paser 返回的 抽象语法树
        try
            ignore (
                let ex = fromFile source
                run ex inputargs
            ) //run 方法对语法树求值
        with Failure msg -> printf "ERROR: %s\n" msg
    else
        printf "Usage: interpc.exe <source file> <args>\n"
        printf "example: interpc.exe ex1.c 8\n"

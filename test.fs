open System
open System.IO
open System.Threading

let fooAsync () =
    task  {
        printfn "start"
        do! Async.Sleep(1000)
        printfn "end"
    }

let demo () =
    let task = fooAsync()
    // let work = workThenWait () |> Async.Start
    // printfn "started"
    // printfn "completed"
    // task.Wait()
    printfn "1"
    // Thread.Sleep(2000)
    printfn "2"
    // printfn "completed22222"
    0

demo ()

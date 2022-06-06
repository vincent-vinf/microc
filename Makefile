# FILENAME=ex_for_range.c
# FILENAME=ex_array_index.c
# FILENAME=ex_for.c
# FILENAME=ex_func.c
# FILENAME=ex_go.c
# FILENAME=ex_init.c
FILENAME=ex_bool.c
arg=
run: clean
	dotnet run --project interpc.fsproj example/$(FILENAME) $(arg)

debug: clean
	dotnet run --project interpc.fsproj -g example/$(FILENAME) $(arg)

clean:
	dotnet clean interpc.fsproj


COMP_NAME=ex_comp
comp:
	dotnet clean microcc.fsproj
	dotnet run --project microcc.fsproj  example/$(COMP_NAME).c $(arg)
comp_run: comp
	dotnet clean machine.csproj
	dotnet run --project machine.csproj example/$(COMP_NAME).out $(arg)
comp_debug: comp
	dotnet clean machine.csproj
	dotnet run --project machine.csproj -t example/$(COMP_NAME).out $(arg)
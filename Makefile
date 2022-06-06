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
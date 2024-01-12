# SlowGoing

  * Run `mix setup` to install and setup dependencies

  * Start an iex session with `iex -S mix`

# Test Erlang ODBC

  iex> :odbc.start()
  
  iex> conn_str = 'DRIVER={ODBC Driver 18 for SQL Server};SERVER=localhost;DATABASE=slow_going_dev;UID=sa;PWD=*_Redacted_*;TrustServerCertificate=yes;'
  
  iex> {:ok, sqlcon} = :odbc.connect(conn_str,[])

  iex> {time, result} = :timer.tc( :odbc, :sql_query, [sqlcon, to_charlist("Select [float_one], [float_two], [float_three], [float_four], [float_five], [float_six], [float_seven], [float_eight], [float_nine], [int_one], [int_two], [int_three] from floats_test")])

  iex> time

# Test Ecto Raw Query

  iex> {time, result} = :timer.tc(Ecto.Adapters.SQL, :query!, [SlowGoing.Repo, "Select [float_one], [float_two], [float_three], [float_four], [float_five], [float_six], [float_seven], [float_eight], [float_nine], [int_one], [int_two], [int_three] from floats_test", []])
  
  iex> time

# Test Ecto Schema Query

  iex> {time, result} = :timer.tc(SlowGoing.Repo, :all, [SlowGoing.Platform.FloatsTest])
  
  iex> time
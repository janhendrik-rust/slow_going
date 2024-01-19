defmodule  SlowGoing.Run do
  import Ecto.Query

  alias SlowGoing.Platform.FloatsTest;
  alias SlowGoing.Repo;

  def fetch_all() do
    from(f in FloatsTest, select: [f.float_one ,f.float_two ,f.float_three ,f.float_four ,f.float_five ,f.float_six ,f.float_seven ,f.float_eight ,f.float_nine,
                                   f.int_one   ,f.int_two   ,f.int_three   ,f.int_four   ,f.int_five   ,f.int_six   ,f.int_seven   ,f.int_eight   ,f.int_nine  ], limit: 10000) |> Repo.all()
  end

  def fetch_all_floats() do
    from(f in FloatsTest, select: [f.float_one, f.float_two, f.float_three, f.float_four, f.float_five, f.float_six, f.float_seven, f.float_eight, f.float_nine], limit: 10000) |> Repo.all()
  end

  def fetch_all_ints() do
    from(f in FloatsTest, select: [f.int_one, f.int_two, f.int_three, f.int_four, f.int_five, f.int_six, f.int_seven, f.int_eight, f.int_nine], limit: 10000) |> Repo.all()
  end

  def fetch_float_one() do
    from(f in SlowGoing.Platform.FloatsTest, select: [f.float_one], limit: 10000) |> SlowGoing.Repo.all()
  end

  def fetch_float_one_two_three() do
    from(f in SlowGoing.Platform.FloatsTest, select: [f.float_one, f.float_two,f.float_three], limit: 10000) |> SlowGoing.Repo.all()
  end

  def fetch_int_one() do
    from(f in SlowGoing.Platform.FloatsTest, select: [f.int_one], limit: 10000) |> SlowGoing.Repo.all()
  end

  def fetch_int_one_two_three() do
    from(f in FloatsTest, select: [f.int_one,f.int_two,f.int_three], limit: 10000) |> Repo.all()
  end
end

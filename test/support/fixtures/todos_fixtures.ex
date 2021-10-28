defmodule Todoapp.TodosFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Todoapp.Todos` context.
  """

  @doc """
  Generate a todo.
  """
  def todo_fixture(attrs \\ %{}) do
    {:ok, todo} =
      attrs
      |> Enum.into(%{
        completion_status: true,
        description: "some description",
        title: "some title"
      })
      |> Todoapp.Todos.create_todo()

    todo
  end
end

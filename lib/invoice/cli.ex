defmodule Invoice.CLI do
  @moduledoc """
  Defines the command-line interface
  """

  use ExCLI.DSL, escript: true

  name "invoice"
  description "Invoice tracker"
  long_description ~s"""
  invoice records invoices and payments and produces a report of
  paid and unpaid invoices.
  """

  command :record do
    description "Records an invoice"

    argument :number, type: :integer
    argument :amount, type: :float
    argument :date

    run context do
      %{number: number, date: date, amount: amount} = context
      IO.puts("Recorded invoice ##{number} on #{date} for $#{amount}")
    end
  end
end
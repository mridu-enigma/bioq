defmodule BioqWeb.UtilController do
  use BioqWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def rgen(conn, %{"rgen_params" => rgen_params}) do
    # text conn, ~s[distribution: #{Map.get(rgen_params,"distribution")}
    #      size: #{Map.get(rgen_params,"size")}]
    # run the function
    # send the result back for rendering
    # paramUrl =  Enum.map(Map.keys(rgen_params),fn(x) -> ~s/#{x}=#{Map.get(rgen_params,x)}/ end)
    #   |> Enum.join("&")
    redirect(conn, to: util_path(conn, :rgen, distribution: Map.get(rgen_params,"distribution"), size: Map.get(rgen_params,"size")))

  end
  def rgen(conn, %{"distribution" => distribution, "size" => size}) do
    paramText = "Distribution: #{distribution}, size: #{size}"
    output = [Rport.runR("#{distribution}(n=#{size})")]
    outputText = "(It is real, just looks weird.) " <> Enum.join(output, ", ")
    # UtilView.render_rgen_output(%{"output": outputText , "params": paramText})
    render conn, "rgen.html", %{"output": outputText , "params": paramText}
  end
  def rgen(conn, _params) do
    render conn, "rgen.html"
  end

end

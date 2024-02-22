# Terraform Graph 

[Graph](https://spacelift.io/blog/terraform-graph)

The Terraform graph command generates a visual representation of the dependency relationships between resources in your Terraform configuration or execution plan, helping you to understand the structure and dependencies within your infrastructure. These graphs can also be useful for identifying potential issues, planning changes, and debugging. Each resource is represented as a node, and the arrows between nodes represent the dependencies between resources.
Graphs are generated in the DOT output format, a text-based graph description language, which can be processed by **GraphViz** software to create visual diagrams (e.g., PNG, SVG).
The graph command does not create or apply any infrastructure changes; it’s purely for visualization.

## How to use the Terraform graph command?

To generate a Terraform graph type:

```terraform graph [options]```
The options available with this command:

**-type=** — Specify the type of graph to generate, which can be set to one of the following:
**plan** — Graph based on the current configuration.
**plan-refresh-only** — Graph-based on a refresh plan only.
**plan-destroy** — Graph-based on a plan for destroying resources.
**apply** — Graph-based on a saved execution plan.
**-draw-cycles** — Include cycles in the graph with colored edges (useful for identifying potential issues).
**-plan=tfplan** — Render a graph based on specified plan file instead of configuration files in the current working directory.

```
brew install graphviz
terraform graph | dot -Tsvg > graph.svg
terraform graph | dot -Tpdf > graph.pdf
terraform graph -type=plan | dot -Tpng -o graph.png
```

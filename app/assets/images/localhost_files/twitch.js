
function bubbleChart() {
    let width = 960,
        height = 960,
        attForColors = [],
        attForRadius = [];

    function chart(selection) {
        const data = selection.datum().top;
        data.forEach(datum => {
          attForColors.push(datum.game.name);
          attForRadius.push(datum.viewers);
        });
        let div = selection,
            svg = div.selectAll('svg');
        svg.attr('width', width).attr('height', height);

        let tooltip = selection
            .append("div")
            .style("position", "absolute")
            .style("visibility", "hidden")
            .style("color", "white")
            .style("padding", "8px")
            .style("background-color", "#4B387A")
            .style("border-radius", "6px")
            .style("text-align", "center")
            .style("width", "150px")
            .text("");


        let simulation = d3.forceSimulation(data)
            .force("charge", d3.forceManyBody().strength([-150]))
            .force("x", d3.forceX())
            .force("y", d3.forceY())
            .on("tick", ticked);

        function ticked(e) {
            node.attr("cx", function(d) {
                    return d.x;
                })
                .attr("cy", function(d) {
                    return d.y;
                });
        }
        function showToolTip(d) {
          tooltip.html(d.game.name + "<br>" + d.viewers + " viewers");
          return tooltip.style("visibility", "visible");
        }
        function hideToolTip(d) {

        }
        function handleMouseOver(d) {
          let circle = d3.select(this);
          circle.transition().duration(200)
            .attr("r", function(d) {
              return scaleRadius(d.viewers) + 20;
            });
          showToolTip(d);
        }

        function handleMouseOut(d) {
          let circle = d3.select(this);
          circle.transition()
            .duration(200)
            .attr("r", function(d) {
              return scaleRadius(d.viewers);
            });
          return tooltip.style("visibility", "hidden");
        }


        let colorCircles = d3.scaleOrdinal(d3.schemeCategory10);
        let scaleRadius = d3.scaleLinear().domain([d3.min(attForRadius), d3.max(attForRadius)]).range([10, 40]);
        let node = svg.selectAll("circle")
            .data(data)
            .enter()
            .append("circle")
            .attr('r', function(d) {
                return scaleRadius(d.viewers);
            })
            .style("fill", function(d) {
                return colorCircles(d.game.name);
            })
            .attr('transform', 'translate(' + [width / 2, height / 2] + ')')
            .on("mouseover", handleMouseOver
            )
            .on("mousemove", function() {
              return tooltip.style("top", (d3.event.pageY - 10) + "px").style("left", (d3.event.pageX + 10) + "px");
            })
            .on("mouseout", handleMouseOut
            );

    }

    chart.width = function(value) {
        if (!arguments.length) {
            return width;
        }
        width = value;
        return chart;
    };

    chart.height = function(value) {
        if (!arguments.length) {
            return height;
        }
        height = value;
        return chart;
    };




    return chart;
}







//

//function() {
// return tooltip.style("visibility", "hidden");
//}









// oiwafjaowef

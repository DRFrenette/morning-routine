MorningRoutine.Views.Modules.DateSeriesDay = function(el, graphData, titleData) {
  this.$el = $(el);
  this.id = this.$el[0].id;
  this.graphData = graphData;
  this.graph = AmCharts.makeChart(this.id,
      {
        "type": "serial",
        "categoryField": "date",
        "dataDateFormat": "MM/DD/YYYY",
        "pathToImages": "http://cdn.amcharts.com/lib/3/images/",
        "categoryAxis": {
          "parseDates": true
        },
        "chartCursor": {},
        "chartScrollbar": {},
        "trendLines": [],
        "graphs": [
        {
          "bullet": "round",
          "id": "AmGraph-1",
          "title": titleData["legend"],
          "valueField": "column-1"
        }
        ],
        "guides": [],
        "valueAxes": [
        {
          "id": "ValueAxis-1",
          "title": titleData["axis_title"]
        }
        ],
        "allLabels": [],
        "balloon": {},
        "legend": {
          "useGraphSettings": true
        },
        "titles": [
        {
          "id": titleData["id"],
          "size": 15,
          "text": titleData["graph_title"]
        }
        ],
        "dataProvider": graphData
      }
  );
};


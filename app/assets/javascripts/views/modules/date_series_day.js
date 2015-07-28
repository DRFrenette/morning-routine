MorningRoutine.Views.Modules.DateSeriesDay = function(el, graphData) {
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
          "title": "Word Count",
          "valueField": "column-1"
        }
        ],
        "guides": [],
        "valueAxes": [
        {
          "id": "ValueAxis-1",
          "title": "Axis title"
        }
        ],
        "allLabels": [],
        "balloon": {},
        "legend": {
          "useGraphSettings": true
        },
        "titles": [
        {
          "id": "journal-graph-title",
          "size": 15,
          "text": "Word Count by Day"
        }
        ],
        "dataProvider": graphData
      }
  );
};


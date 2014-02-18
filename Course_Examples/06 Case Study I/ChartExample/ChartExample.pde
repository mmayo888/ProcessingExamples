
PieChart pieChart;
BarChart barChart;

void setup(){
  size(1200,600);
  pieChart = new PieChart("fruit.csv",50,50,500,500);
  barChart = new BarChart("fruit.csv",600,50,500,500);
}

void draw(){
  pieChart.draw();
  barChart.draw();
}

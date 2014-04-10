class maze {
  private ArrayList<maze> _obstaclelist;
  private color colour = #F50A0A;
  
  public maze(){
    _obstaclelist = new ArrayList<maze>();   
  }
  
  public void addobstacle(float x, float y, float w, float h){
    obstacle o = new obstacle(colour, x , y, w, h);
    _obstaclelist.add(o);
  }
  
  public void drawmaze(){
    for(maze o: _obstaclelist){
      o.drawobstacle();
    }
  }
}

import Controller from '@ember/controller';
import Flowchart from 'flowchart';
import Ember from 'ember';
export default Controller.extend({
  store: Ember.inject.service(),
  test: Ember.computed('model.decisions.[]',"model.selections.[]","model.start","model.completions.[]","model.options.[]","model.initmodels.[]",function(){
    var a="st=>start: Anwendungsstart\n";
    a+="e=>end\n"
    this.get('model.decisions').forEach((decision)=>{
      a+="d"+decision.get('id')+"=>condition: "+decision.get('question')+"\n";
    });
    this.get('model.selections').forEach((selection)=>{
      a+="s"+selection.get('id')+"=>inputoutput: "+selection.get('title')+"\n";
    });
    this.get('model.completions').forEach((completion)=>{
      a+="c"+completion.get('id')+"=>operation: Fertig?\n";
    });
    this.get('model.initmodels').forEach((initmodel)=>{
      a+="i"+initmodel.get('id')+"=>subroutine: "+initmodel.get('model')+"\n";
    });
    a+="\n";
    a+="st->"+this.get('model.start.first._internalModel.modelName').charAt(0)+this.get('model.start.first._internalModel.id')+"\n";
    var b=this.get('model.start.first._internalModel.modelName');
    var c=this.get('model.start.first._internalModel.id');
    //console.log(b);
    //console.log(c);
    a+=this.deepRecursive(b,c);
    //console.log(a);
    return a;
  }),
  deepRecursive(m,i){
    var _this=this;
    let sub="";
    if(m=="decision"){
      console.log(_this.get("model.decisions").filterBy("id",i).get("firstObject"));

      //console.log(s);
      var a=this.get("store").peekRecord("decision",i,{include: "ownoptions"});
      //console.log(a);
      //let op=this.get("model"+i+"ownoptions");
      //console.log(op);
    }
    return sub;
  },
  diagramcontent: 'st=>start: Start:>http://www.google.com[blank]\n' + 'e=>end:>http://www.google.com\n' + 'op1=>operation: My Operation\n' + 'op2=>operation: Stuff|current\n' + 'sub1=>subroutine: My Subroutine\n' + 'cond=>condition: Yes \n' + 'or No?\n:>http://www.google.com\n' + 'c2=>condition: Good idea|rejected\n' + 'io=>inputoutput: catch something...|request\n' + '\n' + 'st->op1(right)->cond\n' + 'cond(yes, right)->c2\n' + 'cond(no)->sub1(left)->op1\n' + 'c2(true)->io->e\n' + 'c2(false)->op2->e',
});

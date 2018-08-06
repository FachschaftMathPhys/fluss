import Component from '@ember/component';

export default Component.extend({
  diagramcontent: 'st=>start: Start:>http://www.google.com[blank]\n' + 'e=>end:>http://www.google.com\n' + 'op1=>operation: My Operation\n' + 'op2=>operation: Stuff|current\n' + 'sub1=>subroutine: My Subroutine\n' + 'cond=>condition: Yes \n' + 'or No?\n:>http://www.google.com\n' + 'c2=>condition: Good idea|rejected\n' + 'io=>inputoutput: catch something...|request\n' + '\n' + 'st->op1(right)->cond\n' + 'cond(yes, right)->c2\n' + 'cond(no)->sub1(left)->op1\n' + 'c2(true)->io->e\n' + 'c2(false)->op2->e',
  diagramstring:"",
  // afterModel(){
  //   console.log(test);
  //   let a = "st=>start: Anwendungsstart\n";
  //   a += "e=>end\n"
  //   this.get('model.decisions').forEach((decision) => {
  //     a += "d" + decision.get('id') + "=>condition: " + decision.get('question') + "\n";
  //   });
  //   this.get('model.selections').forEach((selection) => {
  //     a += "s" + selection.get('id') + "=>inputoutput: " + selection.get('title') + "\n";
  //   });
  //   this.get('model.completions').forEach((completion) => {
  //     a += "c" + completion.get('id') + "=>operation: Fertig?\n";
  //   });
  //   this.get('model.initmodels').forEach((initmodel) => {
  //     a += "i" + initmodel.get('id') + "=>subroutine: " + initmodel.get('model') + "\n";
  //   });
  //   a += "\n";
  //   a += "st->" + this.get('model.start.first._internalModel.modelName').charAt(0) + this.get('model.start.first._internalModel.id') + "\n";
  //
  //   this.get('model.decisions').forEach((decision) => {
  //
  //     console.log(decision);
  //     decision.get('ownoptions').then((test) => {
  //       test.forEach((op) => {
  //         op.get("optionfollowup").then((g) => {
  //           a += "d" + decision.get("id") + "(" + op.get("label") + ")->" + g.get("_internalModel.modelName").charAt(0) + g.get("_internalModel.id")+"\n";
  //         });
  //       });
  //     });
  //   });
  //   this.get('model.selections').forEach((selection) => {
  //     selection.get('selfollowup').then((next) => {
  //       a += "s" + selection.get("id") + "->" + next.get("_internalModel.modelName").charAt(0) + next.get("_internalModel.id")+"\n";
  //     });
  //   });
  //   this.get('model.initmodels').forEach((initmodel) => {
  //     initmodel.get('initfollowup').then((next) => {
  //       a += "i" + initmodel.get("id") + "->" + next.get("_internalModel.modelName").charAt(0) + next.get("_internalModel.id")+"\n";
  //     });
  //   });
  //   this.set('diagramstring',a);
  // },
});

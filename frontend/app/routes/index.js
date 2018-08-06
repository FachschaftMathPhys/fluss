import Route from '@ember/routing/route';
import {hash} from "rsvp";

export default Route.extend({
  model:function(){
    return hash({decisions:this.store.query('decision',{include:"ownoptions"}), completions:this.store.findAll('completion'),selections:this.store.findAll('selection',{include:"selfollowup,forms"}),initmodels:this.store.findAll('initmodel',{include:'initfollowup'}),start:this.store.findRecord('start',1,{include:"first"}),forms:this.store.findAll('form',{include:"form-elements"}),options:this.store.findAll('option',{include:"optionfollowup"}),formelements:this.store.findAll('form-element'),string:""});
  },
  afterModel(model,transition){
    model.string += "st=>start: Anwendungsstart\n";
    model.string+= "e=>end\n";
    model.decisions.forEach((decision) => {
      model.string+= "d" + decision.get('id') + "=>condition: " + decision.get('question') + "\n";
    });
    model.selections.forEach((selection) => {
      model.string+= "s" + selection.get('id') + "=>inputoutput: " + selection.get('title') + "\n";
    });
    model.completions.forEach((completion) => {
      model.string+= "c" + completion.get('id') + "=>operation: Fertig?\n";
    });
    model.initmodels.forEach((initmodel) => {
      model.string+= "i" + initmodel.get('id') + "=>subroutine: " + initmodel.get('model') + "\n";
    });
    model.string+= "\n";
    model.string+= "st->" + model.start.get('first.content._internalModel.modelName').charAt(0) + model.start.get('first.content._internalModel.id') + "\n";
    console.log(model.decisions);
    console.log(model.forms);
    console.log(model.selections);
    console.log(model.initmodels);
    console.log(model.options.content[0]._data.label);
    /*model.decisions.forEach((decision) => {
      console.log(decision.get('ownoptions'));
      decision.get('ownoptions').then((test) => {
        test.forEach((op) => {
          op.get("optionfollowup").then((g) => {
            model.string+= "d" + decision.id + "(" + op.label + ")->" + g.get("_internalModel.modelName").charAt(0) + g.get("_internalModel.id")+"\n";
          });
        });
      });
    });
    model.selections.forEach((selection) => {
      selection.get('selfollowup').then((next) => {
        model.string+= "s" + selection.get("id") + "->" + next.get("_internalModel.modelName").charAt(0) + next.get("_internalModel.id")+"\n";
      });
    });
    model.initmodels.forEach((initmodel) => {
      initmodel.get('initfollowup').then((next) => {
        model.string+= "i" + initmodel.get("id") + "->" + next.get("_internalModel.modelName").charAt(0) + next.get("_internalModel.id")+"\n";
      });
    });*/
  }
});

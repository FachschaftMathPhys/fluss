import Route from '@ember/routing/route';
import {hash} from "rsvp";

export default Route.extend({
  model:function(){
    return hash({decisions:this.store.findAll('decision',{include:"ownoptions"}), completions:this.store.findAll('completion'),selections:this.store.findAll('selection',{include:"selfollowup,forms"}),initmodels:this.store.findAll('initmodel',{include:'initfollowup'}),start:this.store.findRecord('start',1,{include:"first"}),forms:this.store.findAll('form',{include:"form-elements"}),options:this.store.findAll('option',{include:"optionfollowup"}),formelements:this.store.findAll('form-element')});
  }
});

import Route from '@ember/routing/route';
import {hash} from "rsvp";

export default Route.extend({
  model:function(){
    return hash({decisions:this.store.findAll('decision')});
  }
});

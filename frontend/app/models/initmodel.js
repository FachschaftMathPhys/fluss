import DS from 'ember-data';
import Dialogstep from './dialogstep';

export default Dialogstep.extend({
  model: DS.attr('string'),
  initfollowup: DS.belongsTo('dialogstep',{polymorphic:true}),
});

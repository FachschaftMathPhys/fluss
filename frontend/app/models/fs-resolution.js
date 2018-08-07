import { Model, attr, key, hasOne, hasMany } from 'ember-orbit';

export default Model.extend({
	remoteId: key(), 
  figure: attr('number'),
  description: attr('string'),
  justification: attr('string'),
  offerComparison: hasMany('offer-comparison'),
  budgetaryPosition: hasOne('budgetary-position'),
  user: hasOne('user'),
  fsstep: hasOne('dialogstep',{polymorphic:true})
});

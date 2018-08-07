import { Model, attr, key, hasOne, hasMany } from 'ember-orbit';

export default Model.extend({
	remoteId: key(), 
  sessionDate: attr('date'),
  figure: attr('number'),
  applicant: attr('string'),
  description: attr('string'),
  justification: attr('string'),
  miscellenea: attr('string'),
  offerComparison:hasMany('offer-comparison'),
  user: hasOne('user'),
  fastep: hasOne('dialogstep',{polymorphic:true})
});

import { Model, attr, key, hasOne, hasMany } from 'ember-orbit';

export default Model.extend({
	remoteId: key(), 
  price1: attr('number'),
  price2: attr('number'),
  price3: attr('number'),
  productDescription1: attr('string'),
  productDescription2: attr('string'),
  productDescription3: attr('string'),
  offeror1: attr('string'),
  offeror2: attr('string'),
  offeror3: attr('string'),
  link1: attr('string'),
  link2: attr('string'),
  link3: attr('string'),
  explanation: attr('string'),
  user: hasOne('user'),
  ocstep: hasOne('dialogstep',{polymorphic:true})
});

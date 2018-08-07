import { Model, attr, key, hasOne, hasMany } from 'ember-orbit';

export default Model.extend({
	remoteId: key(), 
  first: hasOne('dialogstep',{polymorphic:true})
});

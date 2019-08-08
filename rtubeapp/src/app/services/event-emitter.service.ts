import { Injectable, EventEmitter } from '@angular/core';    
import { Subscription } from 'rxjs/internal/Subscription';    
    
@Injectable({    
  providedIn: 'root'    
})    
export class EventEmitterService {    
    
  getOrderlineitemComponentFunction = new EventEmitter();    
  subsVar: Subscription;    
    
  constructor() { }    
    
  refreshOrderlineitem() {    
    this.getOrderlineitemComponentFunction.emit();    
  }    
}  
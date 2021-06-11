import { LightningElement, wire } from 'lwc';
import findDisputes from '@salesforce/apex/DisputeController.findDisputes';

const DELAY = 300; 


export default class ViewDisputes extends LightningElement {
  
    searchKey = "";
    
    @wire(findDisputes,{searchKey:'$searchKey'})disputes;
    handleKeyChange(event) {
        
        window.clearTimeout(this.delayTimeout);
        const searchKey = event.target.value;
        console.log(this.disputes);

        this.delayTimeout = setTimeout(() => {
            this.searchKey = searchKey;
        }, DELAY);
    }
    
}
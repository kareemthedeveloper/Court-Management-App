import { LightningElement, wire } from 'lwc';
import findDisputes from '@salesforce/apex/DisputeController.findDisputes';

const DELAY = 300; 


export default class ViewDisputes extends LightningElement {

    searchKey = "";

    @wire(findDisputes,{searchKey:'$searchKey'})disputes;
    handleKeyChange(event) {
        // Debouncing this method: Do not update the reactive property as long as this function is
        // being called within a delay of DELAY. This is to avoid a very large number of Apex method calls.
        window.clearTimeout(this.delayTimeout);
        const searchKey = event.target.value;
        console.log(this.disputes);
        // eslint-disable-next-line @lwc/lwc/no-async-operation
        this.delayTimeout = setTimeout(() => {
            this.searchKey = searchKey;
        }, DELAY);
    }
}
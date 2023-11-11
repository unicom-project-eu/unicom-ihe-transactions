This section defines the actors and transactions in this implementation guide.

The figure below shows the actors directly involved in the MHD Profile and the relevant transactions between them.

  <figure>
    {%include ActorsAndTransactions.svg%}
  </figure>

<br/>
<br/>

<table border="1" borderspacing="0" style='border: 1px solid black; border-collapse: collapse'>
<caption>
<b>
Table : Supply - Actors and Transactions
</b>
</caption>
<thead>
<tr style='background: gray;'>
<th>Actors</th>
<th>Transactions</th>
<th>Optionality</th>
</tr>
</thead>
<tbody>
    <tr>
        <td rowspan="2"><a href="#product-data-provider">Product Data Provider</a></td>
        <td><a href='PHARM-U1.html'>Submit product data [PHARM-U1]</a></td>
        <td align='center'>O</td>
    </tr>
    <tr>
        <td><a href='PHARM-U2.html'>Query product data [PHARM-U2]</a></td>
        <td align='center'>O</td>
    </tr>
    <tr>
        <td rowspan="2"><a href="#product-data-provider">Product Data Consumer</a></td>
        <td><a href='PHARM-U1.html'>Submit product data [PHARM-U1]</a></td>
        <td align='center'>O</td>
    </tr>
    <tr>
        <td><a href='PHARM-U2.html'>Query product data [PHARM-U2]</a></td>
        <td align='center'>O</td>
    </tr>
    <tr>
        <td rowspan="1"><a href="#supply-request-filler">Substitution Adviser</a></td>
        <td><a href='PHARM-U1.html'>Query substitutes [PHARM-U3]</a></td>
        <td align='center'>O</td>
    </tr>
    <tr>
        <td rowspan="1"><a href="#supply-request-filler">Substitution Requester</a></td>
        <td><a href='PHARM-U1.html'>Query substitutes [PHARM-U3]</a></td>
        <td align='center'>O</td>
    </tr>
</tbody>
</table>


____  

<br/>             

### Product Data Updates
For the ordering aspects of supply request, two actors are considered: 

<img src="actors_ordering.png" width="60%"/>
<br clear="all"/>


#### <a name="product-data-provider"></a>**Product Data Provider** 
Issues requests for supply. The request can be triggered by any of several events - periodic reordering, minimum reached, etc.
* Sends supply request - transaction [PHARM-S1](PHARM-S1.html).
* Receives updates on supply request status - transaction [PHARM-S2](PHARM-S2.html). 


#### <a name="product-data-consumer"></a>**Product Data Consumer** 
Receives and handles the supply request. The handling can be to respond (e.g. with approval) and/or to forward the request (e.g. to the actual supplier).
* Sends updates on supply request status - transaction [PHARM-S2](PHARM-S2.html). 
* Receives supply request - transaction [PHARM-S1](PHARM-S1.html).


<br/>


### Substitution


The delivery considers two actors: 

<img src="actors_delivery.png" width="60%"/>
<br clear="all"/>

#### <a name="substitution-adviser"></a>**Substitution Adviser**
The supplier sends or forwards the items to a receiver and updates the information about such sending:
* Sends shipment notices - transaction [PHARM-S3](PHARM-S3.html). 
* Receives delivery notices - transaction [PHARM-S4](PHARM-S4.html). 


#### <a name="substitution-requester"></a>**Substitution Requester**
This actor represents the intended or actual receiver of the products.
* Sends delivery notices - transaction [PHARM-S4](PHARM-S4.html). 
* Receives shipment notices - transaction [PHARM-S3](PHARM-S3.html). 

<br/>

<br/><br/>
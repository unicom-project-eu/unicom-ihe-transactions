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
Table : Actors and Transactions
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
        <td rowspan="2"><a href="#product-data-provider">Product Data Provider (Regulatory)</a></td>
        <td><a href='PHARM-U1.html'>Query regulatory product data [PHARM-U1]</a></td>
        <td align='center'>O</td>
    </tr>
    <tr>
        <td><a href='PHARM-U3.html'>Submit regulatory product data [PHARM-U3]</a></td>
        <td align='center'>O</td>
    </tr>
    <tr>
        <td rowspan="2"><a href="#product-data-provider">Product Data Provider (Clinical)</a></td>
        <td><a href='PHARM-U2.html'>Query clinical product data [PHARM-U2]</a></td>
        <td align='center'>O</td>
    </tr>
    <tr>
        <td><a href='PHARM-U4.html'>Submit clinical product data [PHARM-U4]</a></td>
        <td align='center'>O</td>
    </tr>
    <tr>
        <td rowspan="2"><a href="#product-data-provider">Product Data Consumer (Regulatory)</a></td>
        <td><a href='PHARM-U1.html'>Query regulatory product data [PHARM-U1]</a></td>
        <td align='center'>O</td>
    </tr>
    <tr>
        <td><a href='PHARM-U3.html'>Submit regulatory product data [PHARM-U3]</a></td>
        <td align='center'>O</td>
    </tr>
    <tr>
        <td rowspan="2"><a href="#product-data-provider">Product Data Consumer (Clinical)</a></td>
        <td><a href='PHARM-U2.html'>Query clinical product data [PHARM-U2]</a></td>
        <td align='center'>O</td>
    </tr>
    <tr>
        <td><a href='PHARM-U4.html'>Submit clinical product data [PHARM-U4]</a></td>
        <td align='center'>O</td>
    </tr>
    <tr>
        <td rowspan="1"><a href="#supply-request-filler">Substitution Adviser</a></td>
        <td><a href='PHARM-U5.html'>Query substitutes [PHARM-U5]</a></td>
        <td align='center'>O</td>
    </tr>
    <tr>
        <td rowspan="1"><a href="#supply-request-filler">Substitution Requester</a></td>
        <td><a href='PHARM-U5.html'>Query substitutes [PHARM-U5]</a></td>
        <td align='center'>O</td>
    </tr>
</tbody>
</table>


____  

<br/>             

### Product Data Updates
Two actors are considered: 


#### <a name="product-data-consumer"></a>**Product Data Consumer** 
The Product Data Consumer is a class of actors which use IDMP-compatible product master data (product definitions) to consumer. This can be used for any purposes - prescribing, dispensing, etc. and the product data for any [product level concept](concepts.html) - Medicinal Product, Pharmaceutical Product, Packaged Product, or any medicinal product concept, whether it is an IDMP concept or a national concept, as long as it is expressed in an IDMP-compatible way. This actor uses data expressed either as a Bundle of medication definition resources or as a Medication resource, supporting two transaction options.

* Query for medicinal product master data - regulatory - transaction [PHARM-U1](PHARM-U1.html).
* Query for medicinal product master data - clinical - transaction [PHARM-U2](PHARM-U2.html).
* Provide medicinal product master data - regulatory - transaction [PHARM-U3](PHARM-U3.html).
* Provide medicinal product master data - clinical - transaction [PHARM-U4](PHARM-U4.html).



#### <a name="product-data-provider"></a>**Product Data Provider** 
The Product Data Provider is a  class of actors which serve IDMP-compatible product master data (product definitions) to consumer. This can be product data for any [product level concept](concepts.html) - Medicinal Product, Pharmaceutical Product, Packaged Product, or any medicinal product concept, whether it is an IDMP concept or a national concept, as long as it is expressed in an IDMP-compatible way. This actor can provide data expressed either as a Bundle of medication definition resources or as a Medication resource, supporting two transaction options.

* Query for medicinal product master data - regulatory - transaction [PHARM-U1](PHARM-U1.html).
* Query for medicinal product master data - clinical - transaction [PHARM-U2](PHARM-U2.html).
* Provide medicinal product master data - regulatory - transaction [PHARM-U3](PHARM-U3.html).
* Provide medicinal product master data - clinical - transaction [PHARM-U4](PHARM-U4.html).




<br/>


### Substitution
The delivery considers two actors: 

#### <a name="substitution-requester"></a>**Substitution Requester**
This actor requests for equivalent or substitute products for a given product or set of product characteristics
* Query for Substitutes - transaction [PHARM-U5](PHARM-U5.html). 


#### <a name="substitution-adviser"></a>**Substitution Adviser**
This actor provides equivalent or substitute products for a given product or set of product characteristics
* Query for Substitutes - transaction [PHARM-U5](PHARM-U5.html). 


<br/>

<br/><br/>
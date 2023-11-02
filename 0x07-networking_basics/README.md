<h1>0x07. Networking basics #0</h1>
    <div id="content">
		<h2><strong>THE OSI MODEL</strong></h2>
		<img src= "READMEFILES/Summary_OSI_Model.png" style="width: 1300px; height: 800px;"></img>
		<em>Open system interconnect</em></br>
		A model of seven layers, responsible of giving an abstract description of how the network works. In reality the network doesn't go exactly as the OSI model suggests, but the OSI model gives an amazing overview for how it works.</br>
		<br>During the communication between two devices, the packets or messages or what ever you want to call them at this point, they get transmitted trough the layers of the OSI model, going from Application trough physical. Each of those layers has a it's own protocols and functionality.</br>
		Bellow we will mention every layer with a small description since we haven't yet dived in the network's ocean.
		ISO was created for the purpose of connecting devices with different operation systems.
		From a device trying to transmit an information we would have the following.</br>
    	<strong>LAYER 7 - APPLICATION</strong></br>
        Or basically the UI. </br>
            <strong>Note</strong>: Software applications running on a computer are NOT considered to reside in the application layer. Instead, they leverage application layer services and protocols that enable network communication.</br>
        The web browser allow the user to interact, receive information an send it.</br>
        One of  it's important protocols are <em>HTTP</em>, the one that works closely with the browser.</br>
    	<strong>LAYER 6 - PRESENTATION</strong></br>
        Fixating on the way data is presented to the user, and the most important part is making sure the user understand the data presented.</br>
        We can include data compression as a functionality of this layer, since it might be necessary to compress data to transmit it.</br>
        <em>JPEG, GIF, PNG, ASCII</em> Are used in this layer to insure correct data formatting. <em>ASCII</em> is a character encoding standard and it is used in this layer, it maps a specific numeric codes to characters. This layer also deals with encryption and decryption.</br>
                <strong>Note</strong> :  The encryption/decryption might happen in different layers depends on the security protocols and technologies used, but it often happens in this layer or the Application layer.</br>
        As a <strong>SUMMARY</strong>, The presentation layer is responsible for translation from human language to binary language, and responsible for data compression. And the encryption of data and decryption using SSL protocol.</br>
            Translation ---&gt; Compression ---&gt; Encryption</br>
    	<strong>LAYER 5 : SESSION</strong></br>
        Responsible for managing communication sessions between devices, and between users and applications. As you know when accessing an application a session will be established which will save the last posts, if you accessed the app without internet connection, the previous posts will appear.</br>
        <strong>Transmission mode</strong> : simplex mode, half duplex mode, full duplex mode.</br>
            --&gt;SIMPLEX MODE</br>
                Communication in one direction, one device is the sender while the other is the receiver. Both can not exchange data simultaneously.</br>
                A one way route.</br>
            --&gt;HALF DUPLEX MODE</br>
                Communication in both directions, but not at the same time, meaning they take turns to transmit and receive.</br>
            --&gt;FULL DUPLEX MODE</br>
                Communication in both ways and simultaneously. Both devices can perform the roles of sender and receiver and at the same time.</br>
        <strong>Authentication</strong> : When the user enters they're information to gain access.</br>
        <strong>Authorization</strong> :  Give the user access only to files that they're authorized to see.</br>
        <strong>Session management</strong> : Keeping track of the last content you loaded.</br>
    	<strong>THESE THREE LAYERS ABOVE ARE CALLED SOFTWARE LAYERS.</strong></br>
    	<strong>LAYER 4 :  TRANSPORT</strong></br>
        1 - <em>Data transfer</em></br>
        Responsible for the segmentation, it segment data into segments.</br>
        Each segment has port number and sequence number, to keep track of the order of the data.</br>
        2 - <em>Flow control</em></br>
        One of the functionalities of transport layer is the flow control, which is making sure the receiving device's capacity is respected.</br>
        Example : Laptop of 100 Mbps transferring data to a phone with 10 Mbps, The laptop will reduce the size of data to be transferred.</br>
        3 - <em>Determine protocol</em></br>
        TCP or UCP, these are two protocols that the layer chose which one to use to transfer data.</br>
        <strong>TCP</strong> : (Transmission control protocol), Connection-oriented transmission.</br>
        The more accurate one, because it checks if the data has reached fully by waiting for the acknowledgement signal from the receiver, before transferring more segments.</br>
        <strong>UDP</strong> : (User datagram protocol), Connection-less transmission. </br>
        Inaccurate protocol, fast but unreliable, since it doesn't check the success of transmission.</br>
        The layer has to chose between the  two protocols based on what is needed. </br>
        Example :  zoom meeting, UDP because it doesn't matter if a sentence was missed since the two communicators will ask for talker to repeat.</br>
        While in case of an email we use TCP, since the speed doesn't matter as much as the accuracy does.</br>
    	<strong>LAYER 3 : NETWORK</strong></br>
         1 - <em>Logical addressing</em> : The data transferred as segment from the transport layer will be added to the IP of the source and IP of the destination which will be called packet.</br>
         2 - <em>Routing</em> : Finding the best route for the data to be transferred from source to destination. It uses some protocols to so so. Among them are RIP : Routing information protocol.</br>
         OSPF : Open shortest path first.</br>
    	<strong>LAYER 2  : DATA LINK</strong></br>
        1 - <em>Physical addressing</em> : Taking the packet from the network layer and adding the MAC (Media access control) source and MAX destination to it, to form Frame (data unit).</br>
        Header = MACr + MACs + IPr + IPs</br>
        This step is called Frame encapsulation, on the other end we would have frame decapsulation. <br/>
        The data link layer enables the upper layers to access the media (Transmission media).</br>
        And it does the framing based on the type of media used. </br>
        Example :  PC 1 want to send a message to PC2; </br>
            PC2 is connected to R2 using a wireless network, while PC1 is connected to R1 using an Ethernet cable. </br>
            As it is noticeable that there is a media difference between the source and the destination.</br>
            The way to solve this we need to apply the Framing. The way to do it is to pass the Frame from the PC1 to R1, the frame then will lose it's header and tail and puts a new header and a tail then pass them to R2, R2 does the same and pass it to the PC2.</br>
        	2 - Error detection and correction : </br>
            Let's say we have a magnetic field in the space where the data is transferred, The Frame's data will be changed which will cause information to be lost.</br>
            That is why we need to check the errors at this point. There are two methods that we can apply.</br>
            - parity check : A method where we count the numbers of ones in the data, and we check if the number is pair or odd and we match it to the source's frame.</br>
              This way is not efficient in case we lost 2 ones for example, that way the parity check will still be passed even though data was lost.</br>
       		3 - CheckSum : </br>
            We do a sum between the data frame and the 1's complement, which is the opposite of the data.</br>
            We take the sum and we do the complement, if the complement is all zeros then the Frame will accepted.</br>
        	4 - CRC (Cyclic redundancy check) : </br>
            In this method we use a mathematical equation on the data and we put the result of this equation in the trailer, when the Frame reached the destination we do the same equation on the data and we compare the result with the content in the trailer. If they are the same, we accept the Frame.</br>
        	5 - CSMA (carrier sense multiple access) : </br>
            Let's say we have multiple devices connected to the same router, a collision might happen.</br>
            When a device sends a message trough the router, the CSMA checks the channel is there another message being transferred in order to avoid collision.</br>
    	<code>MAC : 12 digit number hexadecimal system, 48 bit, 8 bit each digit</code>a</br>
    	<code>NIC network interfece card</code></br>
    	<strong>LAYER 1 : PHYSICAL</strong></br>
        Responsible of transforming the data to electrical signals or optical signals, or radio signals in case of wireless media.<br/>

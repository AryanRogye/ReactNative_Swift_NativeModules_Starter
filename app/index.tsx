import { useState } from "react";
import { View, Text, Button } from "react-native";
import { NativeModules } from "react-native";

const { NativeStuff } = NativeModules;

export default function HomeScreen() {
    const [openModal, setOpenModal] = useState(false)
    const callSwift = async () => {
        try {
            const message = await NativeStuff.helloWorld();
            console.log('Swift says:', message);
        } catch (err) {
            console.error('Error calling Swift:', err);
        }
    };

    const openNativeModal = async () => {
        try {
            await NativeStuff.openMyModalWithContent("Showing Inside Of SwiftUI");
        } catch (err) {
            console.error('Error opening modal:', err);
        }
    };

    return (
        <View style={{ flex: 1, justifyContent: "center", alignItems: "center" }}>
            <Text>Welcome to your clean app!</Text>
            <Button title="Call Swift" onPress={callSwift} />

            <Text>Press To Open Native Modal</Text>
            <Button title="open modal" onPress={openNativeModal}/>
        </View>
    );
}

function viewInSwiftUI() {
    return (
        <View style={{flex: 1}}>
            <Text>Showing Inside Of SwiftUI</Text>
        </View>
    )
}

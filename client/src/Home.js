import React from "react";
import Hero from "./Hero";

export default function Home({isAuthenticated}){

    return(
        <div>
            <Hero isAuthenticated={isAuthenticated} />
        </div>
    )

}

import React from "react";
import { Route, RouterProvider, createBrowserRouter, createRoutesFromElements } from "react-router-dom";
import App from "../App";
import { Example } from "../pages/Example";

export function Router() {
    const router = createBrowserRouter(createRoutesFromElements(<>
        <Route element={<App/>} path="/"/>
        <Route element={<Example/>} path="/examples"/>
    </>));

    return <RouterProvider router={router}/>;
}


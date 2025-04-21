<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JSP with React</title>
    <!-- Load React and ReactDOM -->
    <script src="https://unpkg.com/react@18/umd/react.production.min.js"></script>
    <script src="https://unpkg.com/react-dom@18/umd/react-dom.production.min.js"></script>
    <!-- Load Babel for JSX transformation (only needed if not pre-compiled) -->
    <script src="https://unpkg.com/babel-standalone@6/babel.min.js"></script>
    <!-- Load your compiled React component -->
  <script src="${pageContext.request.contextPath}/static/js/main.*.js"></script>
</head>
<body>
    <h1>JSP Content</h1>
    
    <!-- Container for React component -->
    <div id="react-root"></div>
    
    <script type="text/javascript">
        // Pass data from JSP to React
        const jspData = {
            message: "<%= request.getParameter("message") %>" || "Default message"
        };
        
        // Render React component
        ReactDOM.render(
            React.createElement('<Hello/'>),
            document.getElementById('react-root')
        );
    </script>
</body>
</html>

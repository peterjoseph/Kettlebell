import React, { Component } from "react";
import { Link } from "react-router-dom";
import PropTypes from "prop-types";
import { t } from "~/shared/translations/i18n";

import WorkspaceURLField from "../../../common/components/inputs/WorkspaceURLField";

class WorkspaceURL extends Component {
	render() {
		const { workspaceURL, changeField, changeSubdomain, redirectPending, errors } = this.props;

		return (
			<div className="w-100 mb-3">
				<span className="h3">{t("label.welcome")}</span>
				<div className="mt-4 mb-4">
					<span>{t("components.authentication.getStarted")}</span>
				</div>
				<WorkspaceURLField value={workspaceURL} onChange={changeField} disabled={redirectPending} error={errors} />
				<div>
					<span>
						<a href="#">{t("components.authentication.whatIsWorkspaceURL")}</a>
					</span>
				</div>
				<button type="submit" className={"btn btn-primary btn-lg btn-block mt-4 p-3"} onClick={changeSubdomain} disabled={redirectPending}>
					{t("action.continue")}
				</button>
				<div className="mt-4">
					<span>{t("components.authentication.noAccount")}</span> <Link to={{ pathname: "/register" }}>{t("action.register")}</Link>
				</div>
			</div>
		);
	}
}

WorkspaceURL.propTypes = {
	workspaceURL: PropTypes.string,
	changeSubdomain: PropTypes.func,
	changeField: PropTypes.func,
	redirectPending: PropTypes.bool,
	errors: PropTypes.object
};

export default WorkspaceURL;
